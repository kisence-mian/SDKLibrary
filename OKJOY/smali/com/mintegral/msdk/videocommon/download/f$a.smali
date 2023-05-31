.class final Lcom/mintegral/msdk/videocommon/download/f$a;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/mintegral/msdk/videocommon/download/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/videocommon/download/f;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/f$a;->a:Lcom/mintegral/msdk/videocommon/download/f;

    return-void
.end method
