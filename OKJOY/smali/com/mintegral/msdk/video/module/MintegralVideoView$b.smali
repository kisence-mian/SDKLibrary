.class final Lcom/mintegral/msdk/video/module/MintegralVideoView$b;
.super Lcom/mintegral/msdk/playercommon/a;
.source "MintegralVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/module/MintegralVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

.field private f:Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/mintegral/msdk/base/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 881
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/a;-><init>()V

    .line 853
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->f:Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    .line 854
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->g:Z

    .line 855
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->h:Z

    .line 856
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->i:Z

    .line 882
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    .line 883
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralVideoView$b;Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 2

    .prologue
    .line 847
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-object p1
.end method


# virtual methods
.method public final OnBufferingEnd()V
    .registers 4

    .prologue
    .line 972
    :try_start_0
    invoke-super {p0}, Lcom/mintegral/msdk/playercommon/a;->OnBufferingEnd()V

    .line 973
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_13

    .line 974
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->bufferFinish()V

    .line 975
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.bufferFinish()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0xe

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 981
    :goto_1e
    return-void

    .line 979
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public final OnBufferingStart(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 957
    :try_start_0
    invoke-super {p0, p1}, Lcom/mintegral/msdk/playercommon/a;->OnBufferingStart(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_c

    .line 959
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->bufferStart()V

    .line 962
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0xd

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 963
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_31

    const-string v0, ""

    :goto_2d
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 967
    :goto_30
    return-void

    .line 963
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_2d

    .line 965
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public final a()I
    .registers 2

    .prologue
    .line 878
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->b:I

    return v0
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 2

    .prologue
    .line 866
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 867
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 874
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->k:Ljava/lang/String;

    .line 875
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->j:Z

    .line 871
    return-void
.end method

.method public final onPlayCompleted()V
    .registers 4

    .prologue
    .line 897
    invoke-super {p0}, Lcom/mintegral/msdk/playercommon/a;->onPlayCompleted()V

    .line 898
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_13

    .line 899
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->complete()V

    .line 900
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.complete()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->h(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Lcom/mintegral/msdk/playercommon/PlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->setClickable(Z)V

    .line 904
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x79

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 905
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0xb

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 906
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->c:I

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->b:I

    .line 907
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a(Z)Z

    .line 908
    return-void
.end method

.method public final onPlayError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 914
    const-string v0, "DefaultVideoFeedsPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorStr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-super {p0, p1}, Lcom/mintegral/msdk/playercommon/a;->onPlayError(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0xc

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 917
    return-void
.end method

.method public final onPlayProgress(II)V
    .registers 10

    .prologue
    const/16 v6, 0x4b

    const/16 v5, 0x32

    const/16 v4, 0x19

    const/4 v3, 0x1

    .line 921
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/playercommon/a;->onPlayProgress(II)V

    .line 922
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-boolean v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_22

    .line 923
    sub-int v0, p2, p1

    .line 924
    if-gtz v0, :cond_15

    .line 925
    const/4 v0, 0x0

    .line 927
    :cond_15
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->h(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    :cond_22
    iput p2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->c:I

    .line 930
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->f:Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    iput p1, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->a:I

    .line 931
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->f:Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    iput p2, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->b:I

    .line 932
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->b:I

    .line 933
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->f:Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_5b

    .line 935
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 936
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p2

    .line 937
    if-gt v0, v4, :cond_5c

    if-ge v4, v1, :cond_5c

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->g:Z

    if-nez v2, :cond_5c

    .line 938
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->g:Z

    .line 939
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->firstQuartile()V

    .line 940
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.firstQuartile()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_5b
    :goto_5b
    return-void

    .line 941
    :cond_5c
    if-gt v0, v5, :cond_73

    if-ge v5, v1, :cond_73

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->h:Z

    if-nez v2, :cond_73

    .line 942
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->h:Z

    .line 943
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->midpoint()V

    .line 944
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.midpoint()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 945
    :cond_73
    if-gt v0, v6, :cond_5b

    if-ge v6, v1, :cond_5b

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->i:Z

    if-nez v0, :cond_5b

    .line 946
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->i:Z

    .line 947
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->e:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->thirdQuartile()V

    .line 948
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.thirdQuartile()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method public final onPlaySetDataSourceError(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 985
    invoke-super {p0, p1}, Lcom/mintegral/msdk/playercommon/a;->onPlaySetDataSourceError(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public final onPlayStarted(I)V
    .registers 5

    .prologue
    .line 887
    invoke-super {p0, p1}, Lcom/mintegral/msdk/playercommon/a;->onPlayStarted(I)V

    .line 888
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->d:Z

    if-nez v0, :cond_15

    .line 889
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->f:Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->d:Z

    .line 892
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a(Z)Z

    .line 893
    return-void
.end method
