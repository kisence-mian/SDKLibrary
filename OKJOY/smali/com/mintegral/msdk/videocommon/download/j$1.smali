.class final Lcom/mintegral/msdk/videocommon/download/j$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/download/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/j;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/j;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/j$1;->a:Lcom/mintegral/msdk/videocommon/download/j;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/j$1;->a:Lcom/mintegral/msdk/videocommon/download/j;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/j;->a(Lcom/mintegral/msdk/videocommon/download/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->c(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method
