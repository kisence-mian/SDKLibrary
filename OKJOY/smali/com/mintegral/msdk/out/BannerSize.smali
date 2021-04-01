.class public Lcom/mintegral/msdk/out/BannerSize;
.super Ljava/lang/Object;
.source "BannerSize.java"


# static fields
.field public static final DEV_SET_TYPE:I = 0x5

.field public static final LARGE_TYPE:I = 0x1

.field public static final MEDIUM_TYPE:I = 0x2

.field public static final SMART_TYPE:I = 0x3

.field public static final STANDARD_TYPE:I = 0x4


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(III)V
    .registers 9

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x32

    const/16 v2, 0x140

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    packed-switch p1, :pswitch_data_42

    .line 1042
    :goto_c
    return-void

    .line 17
    :pswitch_d
    iput v4, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    .line 18
    iput v2, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    goto :goto_c

    .line 21
    :pswitch_12
    const/16 v0, 0xfa

    iput v0, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    .line 22
    const/16 v0, 0x12c

    iput v0, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    goto :goto_c

    .line 25
    :pswitch_1b
    iput v3, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    .line 26
    iput v2, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    goto :goto_c

    .line 1039
    :pswitch_20
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v0

    .line 1040
    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_35

    .line 1041
    iput v3, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    .line 1042
    iput v2, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    goto :goto_c

    .line 1044
    :cond_35
    iput v4, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    .line 1045
    const/16 v0, 0x2d8

    iput v0, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    goto :goto_c

    .line 32
    :pswitch_3c
    iput p3, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    .line 33
    iput p2, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    goto :goto_c

    .line 15
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_20
        :pswitch_1b
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/mintegral/msdk/out/BannerSize;->a:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/mintegral/msdk/out/BannerSize;->b:I

    return v0
.end method
