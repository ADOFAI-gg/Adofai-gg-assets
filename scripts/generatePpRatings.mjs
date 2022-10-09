/**
 * 사용 방법
 * 1. 포럼 시트에 간다
 * 2. Difficulty Reference에 간다
 * 3. PP 부분을 복사해서 difficultyReference.txt 파일에 넣는다
 * 4. node generatePpRatings.mjs 명령어를 입력한다
 */

import fs from 'fs'

const content = (await fs.promises.readFile('ppRatings.txt')).toString()

const result = content
  .split('\n')
  .map((x) => x.split(/\s\s\s\s/))
  .map(([difficulty, rating]) => ({
    difficulty: Number(difficulty.replace('+', '.5')),
    rating: Number(rating),
  }))

await fs.promises.writeFile('ppRatings.json', JSON.stringify(result, null, 2))
