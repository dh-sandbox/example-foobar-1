Code Climate Lunch & Learn Example
a


Example files: https://gist.github.com/dblandin/589e70345774298e1622850349c31876

## Setup

1. Install the Code Climate [browser extension](https://codeclimate.com/browser-extension)
2. [Fork](https://github.com/davehenton/example-foobar) this project to your own GitHub user. 
3. Import your new fork of the repo to Quality, using the `Open Source` section of the Quality UI.
4. Update the included CircleCI config file with the Test Reporter ID found in your Repo Settings in Quality.
5. Create a CircleCI user, and add your repo to CircleCI. 
6. Head back to the Quality UI, and install the GitHub PR Integration for your repo. 



## Introduce some complexity

1. In the GitHub UI, modify `foo_bar.rb` with [this content](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-foo_bar-rb) from gist
2. When committing the changes, create a new branch titled `demo-branch` for the commit and open a pull request. 

You should now see a Cognitive Complexity issue reported by Quality as a PR status
and via the browser extension on the diff. Test coverage reporting should also show
uncovered lines via the browser extension and a drop in coverage via the `diff-coverage` and `total-coverage` statuses.

![Screenshot 2023-01-25 at 7 45 55 PM](https://user-images.githubusercontent.com/18341459/214743756-2335f16e-794c-4456-9483-3fc45900e6c6.png)

![uncovered2](https://user-images.githubusercontent.com/18341459/214745680-0439f858-6cfc-4976-879e-3370d64ac1e3.jpg)




## Add some test coverage

1. On your existing `demo-branch` branch, modify `spec/foo_bar_spec.rb` with [this content](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-foo_bar_spec-rb) from gist
2. Commit the update to `demo-branch`. 

Your pull request should now show a smaller decrease in `total-coverage`, and a passing `diff-coverage` status.

![Screenshot 2023-01-25 at 8 01 06 PM](https://user-images.githubusercontent.com/18341459/214744436-02029cbe-4e09-484a-867b-7bfded32282b.png)

The browser extension will also highlight the newly covered lines in `foo_bar.rb`. 
![Screenshot 2023-01-25 at 8 29 32 PM](https://user-images.githubusercontent.com/18341459/214745367-1630cd55-37c7-4b4a-888b-64b1bae5e079.png)


## Introduce some duplication 

1. On your existing `demo-branch` branch, modify `duplication.rb` and `duplication_2.rb` with [these](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-duplication-rb) [files](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-duplication_2-rb)

2. Commit to `demo-branch`. You should now see duplication issues reported by Code Climate.

## Introduce some duplication

1. On your existing `demo-branch` branch, modify `duplication.rb` and `duplication_2.rb` with [these](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-duplication-rb) [files](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-duplication_2-rb)

2. Commit to `demo-branch`. You should now see duplication issues reported by Code Climate.
3. ## Introduce some duplication

1. On your existing `demo-branch` branch, modify `duplication.rb` and `duplication_2.rb` with [these](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-duplication-rb) [files](https://gist.github.com/dblandin/589e70345774298e1622850349c31876#file-duplication_2-rb)

2. Commit to `demo-branch`. You should now see duplication issues reported by Code Climate. 
