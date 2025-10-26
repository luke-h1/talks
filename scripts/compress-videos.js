#!/usr/bin/env node

import { execSync } from "child_process";
import fs from "fs";
import path from "path";
import ffmpegPath from "ffmpeg-static";

const files = process.argv.slice(2);

for (const file of files) {
  const ext = path.extname(file);
  const output = file.replace(ext, `.compressed${ext}`);
  console.log(`Compressing ${file}...`);

  try {
    execSync(
      `${ffmpegPath || "ffmpeg"} -i "${file}" -vcodec libx264 -crf 28 -preset medium -y "${output}"`,
      { stdio: "inherit" },
    );

    fs.renameSync(output, file);
    console.log(`✅ Compressed: ${file}`);
  } catch (err) {
    console.error(`❌ Failed to compress ${file}:`, err.message);
  }
}
