.class public Lcom/loongcheer/admobsdk/sample/SampleAdSize;
.super Ljava/lang/Object;
.source "SampleAdSize.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdSize;->width:I

    .line 10
    iput p2, p0, Lcom/loongcheer/admobsdk/sample/SampleAdSize;->height:I

    .line 11
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/loongcheer/admobsdk/sample/SampleAdSize;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/loongcheer/admobsdk/sample/SampleAdSize;->width:I

    return v0
.end method
