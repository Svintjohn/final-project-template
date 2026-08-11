# How your final project is submitted

You submit **one link: your public GitHub repository.** Everything is in it, and
everything is read from it.

## The rules

1. **The repository is public**, in **your own GitHub account**, not the course
   organisation. Check the Owner dropdown when you create it. Your activity repos
   this term belonged to the course org; this one is yours, and it stays yours
   after the course ends. That is the point of it being a portfolio piece.
2. **Everything lives in it**: the Flutter code, the documentation in `docs/`,
   your wireframes and design system, your weekly reports, the demo video, and
   the screenshots.
3. **The README carries the live link.** That link is how your app gets opened
   and graded. If it does not load, your app was not seen.
4. **No secrets, no personal data.** See `docs/06-security-and-privacy.md`. This
   is checked.
5. **Link it from your workspace.** In your course workspace repo, put your
   project repo's URL in `project/README.md`. That private pointer is how your
   public repo gets matched to you for grading, so do it as soon as the repo
   exists.

**Name the repository whatever you like.** It is yours and it is in your own
account, so there is no naming convention to follow here, unlike your activity
repos this term. Pick a name you would be happy to have on a CV: your app's
name, not `finalproject2`.

**There is no `student.json` in this project.** Every other activity used one to
identify you. This repo is public, so your name and student number do not belong
in it. The pointer in your workspace does that job instead, privately.

## Getting started from this template

1. Click **Use this template > Create a new repository** on the template repo.
   Make sure the owner is **your own account** and the repository is **public**.
2. Copy your Flutter project into it, or start a new one with
   `flutter create .` in the folder.
3. Turn on Pages: **Settings > Pages > Build and deployment > Source: GitHub
   Actions**. The included workflow deploys on every push to `main`.
4. Fill in the README placeholders and put your live link at the top.
5. Copy your revised proposal, wireframes and design system into `docs/`.
6. Start `docs/04-weekly-reports.md` in week one, not week twelve.

## What is in this template

```
README.md                     your project's front page, fill in every placeholder
SUBMISSION.md                 this file, delete it once you have read it
LICENSE                       MIT, change if you want different terms
.gitignore                    already ignores .env and other secrets
.env.example                  copy to .env, fill in, never commit the copy
.github/workflows/deploy-web.yml   builds and publishes your live demo
docs/
  README.md                   what belongs in each document
  01-proposal.md              your revised proposal
  02-wireframes.md            screen flow and sketches
  03-design-system.md         palette, type, spacing, components
  04-weekly-reports.md        one entry a week, written as you go
  05-demo-video.md            the recording, and how to compress it
  06-security-and-privacy.md  the checklist, filled in and dated
  assets/                     screenshots, wireframe photos, diagrams
```

## The final check, before you send the link

- [ ] The live link in the README opens and every screen is reachable.
- [ ] Screenshots in the README are real and current.
- [ ] `docs/` is filled in, including weekly reports and the video.
- [ ] `docs/06-security-and-privacy.md` is complete and dated.
- [ ] `flutter analyze` is clean.
- [ ] A stranger could clone it, follow the README, and run it.
- [ ] You deleted this file.
