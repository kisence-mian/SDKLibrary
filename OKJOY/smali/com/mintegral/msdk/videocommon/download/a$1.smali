.class final Lcom/mintegral/msdk/videocommon/download/a$1;
.super Ljava/lang/Object;
.source "CampaignDownLoadTask.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/a;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a$1;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$1;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 157
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$1;->a:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0, p1, p2, p3}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V

    .line 159
    :cond_d
    return-void
.end method
