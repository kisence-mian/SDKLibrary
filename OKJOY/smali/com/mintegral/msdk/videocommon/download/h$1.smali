.class final Lcom/mintegral/msdk/videocommon/download/h$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "HTMLResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/download/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/h;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/h;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/h$1;->a:Lcom/mintegral/msdk/videocommon/download/h;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/h$1;->a:Lcom/mintegral/msdk/videocommon/download/h;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/h;->a(Lcom/mintegral/msdk/videocommon/download/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->c(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method
