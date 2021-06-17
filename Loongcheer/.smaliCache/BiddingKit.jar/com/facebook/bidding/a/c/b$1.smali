.class final Lcom/facebook/bidding/a/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bidding/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/bidding/a/c/b$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/bidding/a/c/b$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/bidding/a/c/b$1;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/bidding/a/c/b$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/bidding/a/i/a;->a(Landroid/content/Context;)Lcom/facebook/bidding/a/h/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bidding/a/c/b$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/bidding/a/h/a/g;

    return-void
.end method
