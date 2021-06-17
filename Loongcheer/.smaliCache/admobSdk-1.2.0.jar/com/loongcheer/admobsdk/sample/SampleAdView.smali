.class public Lcom/loongcheer/admobsdk/sample/SampleAdView;
.super Landroid/widget/TextView;
.source "SampleAdView.java"


# instance fields
.field private adSize:Lcom/loongcheer/admobsdk/sample/SampleAdSize;

.field private adUnit:Ljava/lang/String;

.field private listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/sample/SampleAdView;)Lcom/loongcheer/admobsdk/sample/SampleAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/sample/SampleAdView;

    .line 11
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    .line 101
    return-void
.end method

.method public fetchAd(Lcom/loongcheer/admobsdk/sample/SampleAdRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/loongcheer/admobsdk/sample/SampleAdRequest;

    .line 60
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    if-nez v0, :cond_5

    .line 61
    return-void

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->adSize:Lcom/loongcheer/admobsdk/sample/SampleAdSize;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->adUnit:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 66
    :cond_d
    sget-object v1, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->BAD_REQUEST:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;->onAdFetchFailed(Lcom/loongcheer/admobsdk/sample/SampleErrorCode;)V

    .line 70
    :cond_12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 71
    .local v0, "random":Ljava/util/Random;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 72
    .local v2, "nextInt":I
    iget-object v3, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    if-eqz v3, :cond_53

    .line 73
    const/16 v4, 0x55

    if-ge v2, v4, :cond_38

    .line 74
    const-string v1, "Sample Text Ad"

    invoke-virtual {p0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v1, Lcom/loongcheer/admobsdk/sample/SampleAdView$1;

    invoke-direct {v1, p0}, Lcom/loongcheer/admobsdk/sample/SampleAdView$1;-><init>(Lcom/loongcheer/admobsdk/sample/SampleAdView;)V

    invoke-virtual {p0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    invoke-virtual {v1}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;->onAdFetchSucceeded()V

    goto :goto_53

    .line 86
    :cond_38
    const/16 v4, 0x5a

    if-ge v2, v4, :cond_42

    .line 87
    sget-object v1, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->UNKNOWN:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    invoke-virtual {v3, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;->onAdFetchFailed(Lcom/loongcheer/admobsdk/sample/SampleErrorCode;)V

    goto :goto_53

    .line 88
    :cond_42
    const/16 v4, 0x5f

    if-ge v2, v4, :cond_4c

    .line 89
    sget-object v1, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->NETWORK_ERROR:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    invoke-virtual {v3, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;->onAdFetchFailed(Lcom/loongcheer/admobsdk/sample/SampleErrorCode;)V

    goto :goto_53

    .line 90
    :cond_4c
    if-ge v2, v1, :cond_53

    .line 91
    sget-object v1, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->NO_INVENTORY:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    invoke-virtual {v3, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;->onAdFetchFailed(Lcom/loongcheer/admobsdk/sample/SampleErrorCode;)V

    .line 94
    :cond_53
    :goto_53
    return-void
.end method

.method public setAdListener(Lcom/loongcheer/admobsdk/sample/SampleAdListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    .line 50
    iput-object p1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    .line 51
    return-void
.end method

.method public setAdUnit(Ljava/lang/String;)V
    .registers 2
    .param p1, "sampleAdUnit"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->adUnit:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSize(Lcom/loongcheer/admobsdk/sample/SampleAdSize;)V
    .registers 2
    .param p1, "size"    # Lcom/loongcheer/admobsdk/sample/SampleAdSize;

    .line 32
    iput-object p1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView;->adSize:Lcom/loongcheer/admobsdk/sample/SampleAdSize;

    .line 33
    return-void
.end method
