.class public abstract Lcom/mintegral/msdk/out/MtgBidCommonHandler;
.super Ljava/lang/Object;
.source "MtgBidCommonHandler.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidCommonHandler;->a:Ljava/util/Map;

    .line 17
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgBidCommonHandler;->b:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract bidLoad(Ljava/lang/String;)V
.end method

.method public abstract bidRelease()V
.end method
