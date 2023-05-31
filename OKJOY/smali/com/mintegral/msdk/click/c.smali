.class public Lcom/mintegral/msdk/click/c;
.super Ljava/lang/Object;
.source "CommonLoader.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/click/c;->a:I

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x8

    iput v0, p0, Lcom/mintegral/msdk/click/c;->a:I

    .line 45
    return-void
.end method
