.class final Lcom/facebook/bidding/a/c/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bidding/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/bidding/a/c/b$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/bidding/a/c/b$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/bidding/a/c/b$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/bidding/a/c/b$3;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/bidding/a/c/b$3;->a:Ljava/lang/String;

    const-string v1, "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&auction=${AUCTION_ID}&ortb_loss_code=2"

    const-string v2, "${PARTNER_FBID}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bidding/a/c/b$3;->b:Ljava/lang/String;

    const-string v2, "${APP_FBID}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bidding/a/c/b$3;->c:Ljava/lang/String;

    const-string v2, "${AUCTION_ID}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bidding/a/c/b$3;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/bidding/a/i/a;->a(Landroid/content/Context;)Lcom/facebook/bidding/a/h/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/bidding/a/h/a/g;

    return-void
.end method
