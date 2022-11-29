# Rails チュートリアル Rails をはじめよう

## 本リポジトリの説明
[Rails をはじめよう](https://railsguides.jp/getting_started.html) に従って Rails のチュートリアルをやっていくリポジトリ

## 環境構築
- 環境は docker にて構築する
	- 参考: 
		- https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails/
		- ↑の記事が古いため、新しいバージョンでの説明がされていて助かったサイト
			- https://mseeeen.msen.jp/rails-docker/
	- チュートリアル上では sqlite3 を用いているが、Docker 環境構築のサイトは PostgreSQL なので、PostgreSQL で行う
- 新しく得た知識
	- nodejs は Rails 7.0 からインストール不要になったこと
			- >Rails 7 takes advantage of all of these advances to deliver a no-Node default approach to the front end
			- https://rubyonrails.org/2021/12/15/Rails-7-fulfilling-a-vision
	- rake コマンドは rails コマンドに統一されたこと
		- > Exclusive use of rails CLI over Rake
		- https://guides.rubyonrails.org/5_0_release_notes.html
- 発生したエラー
    - Dockerfile などを何度もいじって挙動を確認していたところ、次のようなマウントエラーが発生したが、添付画像のボタンで clean したところ解消した
        - https://qiita.com/sho-hata/items/579ab597e4015b9f19fe
        - ![スクリーンショット 2022-11-29 22 31 48](https://user-images.githubusercontent.com/119154435/204542724-c1ef5e51-bc9f-40a8-a479-d7f1474bf786.png)
