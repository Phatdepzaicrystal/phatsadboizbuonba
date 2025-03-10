const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());
app.use(require('cors')());

let jobIdList = {}; // Lưu danh sách Job ID theo từng boss

// Route để host gửi Job ID lên server
app.post('/update-job', (req, res) => {
  const { bossName, jobId } = req.body;

  if (!bossName || !jobId) return res.status(400).json({ error: "Missing bossName or jobId" });

  jobIdList[bossName] = jobId;
  res.json({ message: "Job ID updated", data: { bossName, jobId } });
});

// Route để lấy Job ID của boss
app.get('/job/:bossName', (req, res) => {
  const bossName = req.params.bossName;
  const jobId = jobIdList[bossName];
  
  if (!jobId) return res.status(404).json({ error: "No Job ID found for this boss" });

  res.json({ bossName, jobId });
});

// Route để xem toàn bộ danh sách
app.get('/jobs', (req, res) => {
  res.json(jobIdList);
});

app.listen(port, () => {
  console.log(`API Job ID Server running at http://localhost:${port}`);
});
