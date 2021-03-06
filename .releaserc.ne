{
    "branches": [
        master,
        test,
        next,
        { name: 'card-[0-9]\d*', prerelease: true }
    ],
        "plugins": [
            "@semantic-release/commit-analyzer",
            "@semantic-release/release-notes-generator",
            [
                "semantic-release-slack-bot",
                {
                    "notifyOnSuccess": true,
                    "notifyOnFail": true,
                    "markdownReleaseNotes": true
                }
            ],
            "@semantic-release/github",
            [
                "@semantic-release/git", {
                    "message": "docs(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}"
                    }
            ]
        ]
}