# Start here

**This repository is the home of your final project.** Not a copy of it, not a
backup: the real thing. Your code lives here, your documents live here, your
demo video lives here, and the live app is built from here. At the end you
submit **one link: this repository.**

Read this once, do the six steps, then delete this file.

---

## What you are looking at

It is already a working Flutter app. Run it and you get a screen that says "It
works". Nothing in it is precious; it exists so you start from something that
runs instead of an empty folder.

```
lib/main.dart          your app. Start changing this one.
pubspec.yaml           your app's name and its packages
web/                   the page your app is served from on the web
test/widget_test.dart  one example test
analysis_options.yaml  the linter rules behind flutter analyze

README.md              your project's front page. Fill in every placeholder.
docs/                  all your documents (see below)
.env.example           copy to .env for your keys. .env is never committed.
.gitignore             already ignores .env and other things that must not ship
.github/workflows/     builds your app and publishes the live link on every push
```

## The six steps

**1. Make it yours.** Click **Use this template > Create a new repository**.
Check the **Owner** dropdown says **your own username**, not the course
organisation, and set it to **Public**.

Name it whatever you like. There is no `classcode-yourname` rule this time: it
is your repository and it stays yours after the course. Pick a name you would be
happy to show someone.

**2. Run it.** In a Codespace or on your laptop:

```bash
flutter pub get
flutter run -d web-server --web-port 8080
```

You should see the "It works" screen inside a phone frame. That frame is
`device_preview`, the same one from Modules 4 and 5, and it disappears
automatically in the deployed build.

**3. Turn on the live link.** In your new repository: **Settings > Pages >
Build and deployment > Source: GitHub Actions**. That is the only click needed.
Every push to `main` now rebuilds your site at
`https://yourusername.github.io/your-repo-name/`.

Put that URL at the top of your README. **It is how your project gets opened and
graded.** If it does not load, your app was not seen.

**4. Tell the course where it is.** In your **workspace repo** (the
`student-6adet-...` one), open `project/README.md` and paste your project
repository's URL there.

That pointer is private and it is how your public repo gets matched to you.
There is no `student.json` in this project and there must not be one: this repo
is public, so your name and student number stay out of it.

**5. Move your documents in.** Everything you have already written for the
planning activities belongs in `docs/`. See the next section.

**6. Start working.** Fill in the README, replace `lib/main.dart` with your own
first screen, and write your first weekly report in
`docs/04-weekly-reports.md` this week, not in week twelve.

## Your planning documents live here too

You submitted your proposal, wireframes and design system through Canvas, and
you will keep submitting the revised versions that way. **Those submissions do
not stop mattering once they are graded.** This repository is where the current
version of each one lives, so that a reader has the plan and the code in one
place.

So copy each one into `docs/` and keep it up to date as the project changes:

| Canvas activity | Lives here as |
| --- | --- |
| Proposal (m6a1, revised in m7a1) | `docs/01-proposal.md` |
| Wireframes (m6a2, revised in m7a2) | `docs/02-wireframes.md` |
| Design system (m6a3, revised in m7a3) | `docs/03-design-system.md` plus the PDF |
| Weekly reports | `docs/04-weekly-reports.md` |
| Demo video | `docs/05-demo-video.md` |
| Security and privacy checklist | `docs/06-security-and-privacy.md` |

Each of those files has a "Changes since the last version" section at the
bottom. Add a dated line whenever the plan moves. That log is worth more to a
reader than a perfect document, because it shows judgement.

**Your design system needs a visual, not only text.** A PDF or an image showing
your palette, type scale, spacing and components, exported from Figma, Canva,
Excalidraw, Google Slides or anything else. Put it in `docs/assets/` and link it
from `docs/03-design-system.md`. A markdown table on its own is not a design
system, it is notes about one.

## Two repositories, and what each is for

You now have two, and they do different jobs.

| | Your workspace repo (`student-6adet-...`) | This project repo |
| --- | --- | --- |
| Who owns it | the course organisation | you |
| Visibility | private | public |
| What it holds | course content, your grades, notes, journal, attendance | your final project, its docs, its video |
| Its `project/` folder | a link to this repo, plus any working notes | not applicable |
| After the course | you lose access when the org is archived | yours forever |

Keep using the workspace for anything course-related. Keep this one for the
project itself.

## Before you push anything

Read `docs/06-security-and-privacy.md` once. The short version: keys go in
`.env` which is already git-ignored, and no real names, numbers, faces or
messages belong in a public repo, in your sample data or in your screenshots.

## The final check, before you send the link

- [ ] The live link in the README opens and every screen is reachable.
- [ ] Screenshots in the README are real and current.
- [ ] `docs/` is filled in: proposal, wireframes, design system plus its visual,
      weekly reports, video.
- [ ] `docs/06-security-and-privacy.md` is complete and dated.
- [ ] Your workspace `project/README.md` links here.
- [ ] `flutter analyze` is clean.
- [ ] A stranger could clone it, follow your README, and run it.
- [ ] You deleted this file.
