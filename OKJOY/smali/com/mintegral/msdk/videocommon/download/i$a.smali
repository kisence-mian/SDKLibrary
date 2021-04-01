.class final Lcom/mintegral/msdk/videocommon/download/i$a;
.super Ljava/lang/Object;
.source "ResDownloadCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/mintegral/msdk/videocommon/download/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/videocommon/download/i;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/i$a;->a:Lcom/mintegral/msdk/videocommon/download/i;

    return-void
.end method
