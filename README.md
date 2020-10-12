# README
## 2020 12th 鐵人賽文章中所示範的範例
### 鐵人賽文章 URL [https://ithelp.ithome.com.tw/users/20061211/ironman/2976](https://ithelp.ithome.com.tw/users/20061211/ironman/2976)
### 小菜的 Blog [https://riverye.com/](https://riverye.com/)
### Medium url [https://medium.com/@riverye](https://medium.com/@riverye)

---

Things you may want to cover:

* Ruby version 2.7.1

* Rails version 6.0.3.3

* Database creation postgresql

* Database initialization postgresql

## 使用方法:
1. `git clone https://github.com/River-Ye/ironman_12th_2020.git`
2. `bundle` (過程若有錯誤，依錯誤，將缺的補齊即可，會需要安裝 `sudo apt-get install cmake`)
3. `cp config\secrets.yml.example config\secrets.yml`
4. `yarn install --check-files`
5. `rails db:migrate:reset`
6. `foreman start`

## 文章目錄
| 編號 | 名稱                                                                                                               |                                                                            小菜的 Blog                                                                             |                         鐵人賽                         |                   Medium                    |
|:----:| ----------------------------------------------------------------------------------------------------------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------:|:-------------------------------------------:|
|  01  | 不免俗一定要來一下的參賽宣言                                                                                           |                                             [點我](https://riverye.com/2020/09/06/Day01-不免俗一定要來一下的參賽宣言/)                                             | [點我](https://ithelp.ithome.com.tw/articles/10233527) | [點我](https://link.medium.com/i4b4cs2Yy9)  |
|  02  | Chrome 的小技巧 - 內建截圖功能                                                                                        |                                             [點我](https://riverye.com/2020/09/07/Day02-Chrome-的小技巧-內建截圖功能/)                                             | [點我](https://ithelp.ithome.com.tw/articles/10234563) | [點我](https://link.medium.com/oZb6FTK0y9)  |
|  03  | Chrome 的小技巧 - 內建 URL 轉 QRcode                                                                                 |                                          [點我](https://riverye.com/2020/09/08/Day03-Chrome-的小技巧-內建-URL-轉-QRcode/)                                          | [點我](https://ithelp.ithome.com.tw/articles/10234819) | [點我](https://link.medium.com/9vaGB6oFA9)  |
|  04  | Mac 上常用的軟體 (iTerm2、Dash、Alfred、Spectacle、Kap、GIPHY Capture)                                                |                         [點我](https://riverye.com/2020/09/09/Day04-Mac-上常用的軟體-iTerm2、Dash、Alfred、Spectacle、Kap、GIPHY-Capture/)                         | [點我](https://ithelp.ithome.com.tw/articles/10235051) | [點我](https://link.medium.com/MtQHdCtkC9)  |
|  05  | Mac、Chrome、iTerm2、Visual Studio Code 上常用的快捷鍵                                                                |                                [點我](https://riverye.com/2020/09/10/Day05-Mac、Chrome、iTerm2、Visual-Studio-Code-上常用的快捷鍵/)                                | [點我](https://ithelp.ithome.com.tw/articles/10235273) | [點我](https://link.medium.com/BZq1ehbZD9)  |
|  06  | 一些常用 Linux 指令 - 1-7 - 基礎篇 (exit、pwd、ls、cd、touch、mkdir、rm、cp、scp、mv、sudo、man、help、clear、which、find) | [點我](https://riverye.com/2020/09/11/Day06-一些常用-Linux-指令-1-7-基礎篇-exit、pwd、ls、cd、touch、mkdir、rm、cp、scp、mv、sudo、man、help、clear、which、find/) | [點我](https://ithelp.ithome.com.tw/articles/10235530) | [點我](https://link.medium.com/fi1zYzsEF9)  |
|  07  | 一些常用 Linux 指令 - 2-7 (ps、top、htop、free、df、du、kill)                                                          |                              [點我](https://riverye.com/2020/09/12/Day07-一些常用-Linux-指令-2-7-ps、top、htop、free、df、du、kill/)                               | [點我](https://ithelp.ithome.com.tw/articles/10235798) | [點我](https://link.medium.com/KnBM0DriH9)  |
|  08  | 一些常用 Linux 指令 - 3-7 (cat、tac、head、tail、vi、sed)                                                              |                                [點我](https://riverye.com/2020/09/13/Day08-一些常用-Linux-指令-3-7-cat、tac、head、tail、vi、sed/)                                 | [點我](https://ithelp.ithome.com.tw/articles/10236105) | [點我](https://link.medium.com/4hDsZdhXI9)  |
|  09  | 一些常用 Linux 指令 - 4-7 (grep、rg、luit、iconv、cal、date)                                                           |                              [點我](https://riverye.com/2020/09/14/Day09-一些常用-Linux-指令-4-7-grep、rg、luit、iconv、cal、date/)                               | [點我](https://ithelp.ithome.com.tw/articles/10236391) | [點我](https://link.medium.com/YFjvigcCK9)  |
|  10  | 一些常用 Linux 指令 - 5-7 (lsof、dig、curl、nc、nice、cpulimit)                                                        |                             [點我](https://riverye.com/2020/09/15/Day10-一些常用-Linux-指令-5-7-lsof、dig、curl、nc、nice、cpulimit/)                              | [點我](https://ithelp.ithome.com.tw/articles/10236845) | [點我](https://link.medium.com/It3HtR6gM9)  |
|  11  | 一些 Linux 套件 - 6-7 - 實用篇 (fzf、tldr)                                                                            |                                         [點我](https://riverye.com/2020/09/16/Day11-一些-Linux-套件-6-7-實用篇-fzf、tldr/)                                         | [點我](https://ithelp.ithome.com.tw/articles/10237413) | [點我](https://link.medium.com/W5OE67YVN9)  |
|  12  | 一些 Linux 套件 - 7-7 - 不實用篇 (cowsay、cmatrix)                                                                    |                                     [點我](https://riverye.com/2020/09/17/Day12-一些-Linux-套件-7-7-不實用篇-cowsay、cmatrix/)                                     | [點我](https://ithelp.ithome.com.tw/articles/10238183) | [點我](https://link.medium.com/IaMPuOTAP9)  |
|  13  | 一些 Git 指令                                                                                                        |                                                    [點我](https://riverye.com/2020/09/18/Day13-一些-Git-指令/)                                                     | [點我](https://ithelp.ithome.com.tw/articles/10238939) | [點我](https://link.medium.com/Mmx5PSNfR9)  |
|  14  | 在 Ruby 中使用 Benchmark 比較哪個方法比較快                                                                             |                                     [點我](https://riverye.com/2020/09/19/Day14-在-Ruby-中使用-Benchmark-比較哪個方法比較快/)                                      | [點我](https://ithelp.ithome.com.tw/articles/10239641) | [點我](https://link.medium.com/epApulKUS9)  |
|  15  | 如何看自己打出去的 request 完整資訊，以 PostBin 和 Webhook.site 為例                                                      |                         [點我](https://riverye.com/2020/09/20/Day15-如何看自己打出去的-request-完整資訊，以-PostBin-和-Webhook-site-為例/)                         | [點我](https://ithelp.ithome.com.tw/articles/10240421) | [點我](https://link.medium.com/jTboFdd7U9)  |
|  16  | Ruby on Rails 中的風格管理套件 RuboCop                                                                                 |                                        [點我](https://riverye.com/2020/09/21/Day16-Ruby-on-Rails-中的風格管理套件-RuboCop/)                                        | [點我](https://ithelp.ithome.com.tw/articles/10240956) | [點我](https://link.medium.com/fx6sSkzeW9)  |
|  17  | Ruby on Rails 中的 awesome_print 讓你的 console 更好閱讀                                                               |                               [點我](https://riverye.com/2020/09/22/Day17-Ruby-on-Rails-中的-awesome-print-讓你的-console-更好閱讀/)                               | [點我](https://ithelp.ithome.com.tw/articles/10241726) | [點我](https://link.medium.com/RDfLdOCrY9)  |
|  18  | Ruby on Rails 中的 Logger 紀錄的介紹與應用                                                                              |                                      [點我](https://riverye.com/2020/09/23/Day18-Ruby-on-Rails-中的-Logger-紀錄的介紹與應用/)                                      | [點我](https://ithelp.ithome.com.tw/articles/10242280) | [點我](https://link.medium.com/9T7n8giyZ9)  |
|  19  | Ruby on Rails 測試篇 - RSpec                                                                                         |                                              [點我](https://riverye.com/2020/09/24/Day19-Ruby-on-Rails-測試篇-RSpec/)                                              | [點我](https://ithelp.ithome.com.tw/articles/10242906) | [點我](https://link.medium.com/M8qWBUbd19)  |
|  20  | Ruby on Rails 測試篇 - Cucumber (內文有範例教如何寫中文測試)                                                              |                               [點我](https://riverye.com/2020/09/25/Day20-Ruby-on-Rails-測試篇-Cucumber-內文有範例教如何寫中文測試/)                               | [點我](https://ithelp.ithome.com.tw/articles/10243344) | [點我](https://link.medium.com/uP1cmw5R29)  |
|  21  | Ruby on Rails 中常見的 N+1 與解法                                                                                      |                                          [點我](https://riverye.com/2020/09/26/Day21-Ruby-on-Rails-中常見的-N-1-與解法/)                                           | [點我](https://ithelp.ithome.com.tw/articles/10244142) | [點我](https://link.medium.com/w4c3ApZw49)  |
|  22  | Ruby on Rails 中的 Race Condition                                                                                    |                                          [點我](https://riverye.com/2020/09/27/Day22-Ruby-on-Rails-中的-Race-Condition/)                                           | [點我](https://ithelp.ithome.com.tw/articles/10244812) | [點我](https://link.medium.com/AUCVQnUb69)  |
|  23  | Ruby on Rails 中的 Redis 的介紹與應用                                                                                  |                                        [點我](https://riverye.com/2020/09/28/Day23-Ruby-on-Rails-中的-Redis-的介紹與應用/)                                         | [點我](https://ithelp.ithome.com.tw/articles/10245246) | [點我](https://link.medium.com/V8n6I2TQ79)  |
|  24  | Ruby on Rails 中的 Resque 的介紹與應用                                                                                 |                                        [點我](https://riverye.com/2020/09/29/Day24-Ruby-on-Rails-中的-Resque-的介紹與應用/)                                        | [點我](https://ithelp.ithome.com.tw/articles/10245939) | [點我](https://link.medium.com/Qz9SocIv99)  |
|  25  | Ruby on Rails 中的 Sidekiq 的介紹與應用                                                                                |                                       [點我](https://riverye.com/2020/09/30/Day25-Ruby-on-Rails-中的-Sidekiq-的介紹與應用/)                                        | [點我](https://ithelp.ithome.com.tw/articles/10246607) | [點我](https://link.medium.com/RPXFvaCabab) |
|  26  | Ruby on Rails 中使用 FFmpeg 處理影音轉檔、合併、上字幕                                                                    |                                [點我](https://riverye.com/2020/10/01/Day26-Ruby-on-Rails-中使用-FFmpeg-處理影音轉檔、合併、上字幕/)                                | [點我](https://ithelp.ithome.com.tw/articles/10247454) | [點我](https://link.medium.com/Z5b8hjxVdab) |
|  27  | Ruby on Rails 中使用 Foreman 打包所有要啟動的 server                                                                    |                                 [點我](https://riverye.com/2020/10/02/Day27-Ruby-on-Rails-中使用-Foreman-打包所有要啟動的-server/)                                 | [點我](https://ithelp.ithome.com.tw/articles/10247491) | [點我](https://link.medium.com/bWT6dLpueab) |
|  28  | Ruby on Rails 中串 Slack 通知                                                                                         |                                            [點我](https://riverye.com/2020/10/03/Day28-Ruby-on-Rails-中串-Slack-通知/)                                             | [點我](https://ithelp.ithome.com.tw/articles/10247920) | [點我](https://link.medium.com/tYwlNOicgab) |
|  29  | Ruby 中的 Struck 與 OpenStruct                                                                                        |                                            [點我](https://riverye.com/2020/10/04/Day29-Ruby-中的-Struck-與-OpenStruct/)                                            | [點我](https://ithelp.ithome.com.tw/articles/10249081) | [點我](https://link.medium.com/YGEc5Qnqjab) |
|  30  | 不免俗一定要來一下的完賽心得                                                                                              |                                             [點我](https://riverye.com/2020/10/05/Day30-不免俗一定要來一下的完賽心得/)                                             | [點我](https://ithelp.ithome.com.tw/articles/10249150) | [點我](https://link.medium.com/0GPyFPxqkab)                   |
