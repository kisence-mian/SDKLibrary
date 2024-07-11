.class public Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mCurrencyAmount:D

.field private mCurrencyType:Ljava/lang/String;

.field private mIapId:Ljava/lang/String;

.field private mOrderId:Ljava/lang/String;

.field private mPaymentType:Ljava/lang/String;

.field private mVirtualCurrencyAmount:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V
    .registers 12

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mOrderId:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mIapId:Ljava/lang/String;

    .line 88
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mCurrencyAmount:D

    .line 89
    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mCurrencyType:Ljava/lang/String;

    .line 90
    iput-wide v1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mVirtualCurrencyAmount:D

    .line 91
    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mPaymentType:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mOrderId:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mIapId:Ljava/lang/String;

    .line 103
    iput-wide p3, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mCurrencyAmount:D

    .line 104
    iput-object p5, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mCurrencyType:Ljava/lang/String;

    .line 105
    iput-wide p6, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mVirtualCurrencyAmount:D

    .line 106
    iput-object p8, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mPaymentType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->getmOrderId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->getmIapId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)D
    .registers 3

    .line 85
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->getmCurrencyAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->getmCurrencyType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)D
    .registers 3

    .line 85
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->getmVirtualCurrencyAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->getmPaymentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getmCurrencyAmount()D
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mCurrencyAmount:D

    return-wide v0
.end method

.method private getmCurrencyType()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mCurrencyType:Ljava/lang/String;

    return-object v0
.end method

.method private getmIapId()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mIapId:Ljava/lang/String;

    return-object v0
.end method

.method private getmOrderId()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method private getmPaymentType()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mPaymentType:Ljava/lang/String;

    return-object v0
.end method

.method private getmVirtualCurrencyAmount()D
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->mVirtualCurrencyAmount:D

    return-wide v0
.end method
