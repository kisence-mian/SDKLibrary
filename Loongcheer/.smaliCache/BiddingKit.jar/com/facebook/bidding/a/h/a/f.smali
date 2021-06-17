.class public Lcom/facebook/bidding/a/h/a/f;
.super Ljava/lang/Exception;


# static fields
.field private static final a:J = -0x217eef64b70b44c1L


# instance fields
.field private b:Lcom/facebook/bidding/a/h/a/g;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/facebook/bidding/a/h/a/g;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/facebook/bidding/a/h/a/f;->b:Lcom/facebook/bidding/a/h/a/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/bidding/a/h/a/g;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/h/a/f;->b:Lcom/facebook/bidding/a/h/a/g;

    return-object v0
.end method
