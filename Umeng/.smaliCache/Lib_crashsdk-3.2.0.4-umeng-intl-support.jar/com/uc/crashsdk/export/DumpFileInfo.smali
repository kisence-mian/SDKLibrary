.class public Lcom/uc/crashsdk/export/DumpFileInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mDeleteAfterDump:Z

.field public mFileTobeDump:Ljava/lang/String;

.field public mIsEncrypted:Z

.field public mLogType:I

.field public mWriteCategory:Z


# direct methods
.method public constructor <init>(Lcom/uc/crashsdk/export/DumpFileInfo;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 16
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    .line 26
    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    .line 28
    iget v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    iput v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    .line 30
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    .line 31
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 32
    iget-boolean p1, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    iput-boolean p1, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 16
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    .line 20
    iput-object p1, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    .line 23
    return-void
.end method
