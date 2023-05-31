.class public abstract Lcom/mintegral/msdk/out/MtgCommonHandler;
.super Ljava/lang/Object;
.source "MtgCommonHandler.java"


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
    .line 12
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgCommonHandler;->a:Ljava/util/Map;

    .line 15
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgCommonHandler;->b:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract load()Z
.end method

.method public abstract release()V
.end method
