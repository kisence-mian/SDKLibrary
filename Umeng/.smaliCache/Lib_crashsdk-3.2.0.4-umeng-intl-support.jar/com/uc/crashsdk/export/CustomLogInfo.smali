.class public Lcom/uc/crashsdk/export/CustomLogInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mAddBuildId:Z

.field public mAddFooter:Z

.field public mAddHeader:Z

.field public mAddLogcat:Z

.field public mAddThreadsDump:Z

.field public mCachedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mData:Ljava/lang/StringBuffer;

.field public mDumpFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpTids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLogType:Ljava/lang/String;

.field public mUploadNow:Z


# direct methods
.method public constructor <init>(Lcom/uc/crashsdk/export/CustomLogInfo;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    .line 13
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    .line 17
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 19
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    .line 21
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    .line 26
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    .line 30
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 40
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    .line 42
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    .line 43
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    .line 44
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    .line 45
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 47
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    .line 48
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    .line 50
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    .line 53
    :cond_47
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 56
    :cond_54
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_61

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    .line 59
    :cond_61
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    .line 62
    :cond_6e
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    .line 13
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    .line 17
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 19
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    .line 21
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    .line 26
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    .line 30
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 35
    iput-object p2, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    .line 36
    return-void
.end method
