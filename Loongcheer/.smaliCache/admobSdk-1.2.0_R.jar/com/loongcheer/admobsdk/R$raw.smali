.class public Lcom/loongcheer/admobsdk/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "raw"
.end annotation


# static fields
.field public static gtm_analytics:I

.field public static keep_third_party_licenses:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2424
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/R$raw;->gtm_analytics:I

    .line 2425
    sput v0, Lcom/loongcheer/admobsdk/R$raw;->keep_third_party_licenses:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
