.class public Lcom/uc/crashsdk/export/VersionInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mBuildId:Ljava/lang/String;

.field public mSubVersion:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/uc/crashsdk/export/VersionInfo;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 29
    iget-object p1, p1, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    iput-object p1, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    .line 30
    return-void
.end method
