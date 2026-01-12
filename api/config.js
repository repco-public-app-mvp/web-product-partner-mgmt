// Vercel Serverless Function to provide GitHub token
export default function handler(req, res) {
  // Only allow GET requests
  if (req.method !== 'GET') {
    return res.status(405).json({ error: 'Method not allowed' });
  }

  // Get GitHub token from environment variable
  const githubToken = process.env.GITHUB_TOKEN;

  if (!githubToken) {
    return res.status(500).json({ error: 'GitHub token not configured' });
  }

  // Return token (only accessible from same origin)
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Content-Type', 'application/json');
  res.status(200).json({
    githubToken: githubToken
  });
}
