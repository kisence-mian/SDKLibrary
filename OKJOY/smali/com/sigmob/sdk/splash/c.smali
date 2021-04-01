.class public Lcom/sigmob/sdk/splash/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/sigmob/sdk/splash/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;ILcom/sigmob/sdk/splash/b;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/splash/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;ILcom/sigmob/sdk/splash/b;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/c;->a:Lcom/sigmob/sdk/splash/h;

    return-void
.end method
