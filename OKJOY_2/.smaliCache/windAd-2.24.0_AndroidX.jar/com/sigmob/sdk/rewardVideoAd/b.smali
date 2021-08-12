.class public Lcom/sigmob/sdk/rewardVideoAd/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/rewardVideoAd/b;->a:I

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sigmob/sdk/rewardVideoAd/b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/b;->c:Z

    return v0
.end method
