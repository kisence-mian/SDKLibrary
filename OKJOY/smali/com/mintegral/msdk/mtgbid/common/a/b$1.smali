.class final Lcom/mintegral/msdk/mtgbid/common/a/b$1;
.super Lcom/mintegral/msdk/mtgbid/common/a/a;
.source "RequesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbid/common/a/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbid/common/a/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbid/common/a/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-direct {p0, p2}, Lcom/mintegral/msdk/mtgbid/common/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;)V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Lcom/mintegral/msdk/mtgbid/common/a/b;)Z

    .line 112
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Lcom/mintegral/msdk/mtgbid/common/a/b;Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;)Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->b(Lcom/mintegral/msdk/mtgbid/common/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->c(Lcom/mintegral/msdk/mtgbid/common/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->getBidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgbid/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Lcom/mintegral/msdk/mtgbid/common/a/b;Lcom/mintegral/msdk/mtgbid/out/BidResponsed;)V

    .line 115
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Lcom/mintegral/msdk/mtgbid/common/a/b;)Z

    .line 120
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->b(Lcom/mintegral/msdk/mtgbid/common/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->c(Lcom/mintegral/msdk/mtgbid/common/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/mtgbid/common/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b$1;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Lcom/mintegral/msdk/mtgbid/common/a/b;Ljava/lang/String;)V

    .line 122
    return-void
.end method
