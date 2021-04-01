.class public Lmobi/oneway/export/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Lmobi/oneway/export/enums/AdType;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    return-void
.end method

.method private a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmobi/oneway/export/a/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lmobi/oneway/export/a/a$1;->a:[I

    iget-object v1, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lmobi/oneway/export/a/a;->b:Ljava/lang/Object;

    check-cast v0, Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/AdMonitor;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1b
    iget-object v0, p0, Lmobi/oneway/export/a/a;->b:Ljava/lang/Object;

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    goto :goto_4

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2d

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Lmobi/oneway/export/enums/AdType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loadAd failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/oneway/export/a/a;->a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v2, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lmobi/oneway/export/f/c;->a(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 8

    const/4 v1, 0x0

    iput-object p2, p0, Lmobi/oneway/export/a/a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2f

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Lmobi/oneway/export/enums/AdType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/oneway/export/a/a;->a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v4, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v0, v4}, Lmobi/oneway/export/f/c;->a(Lmobi/oneway/export/enums/AdType;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    :goto_48
    if-nez v0, :cond_69

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Lmobi/oneway/export/enums/AdType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/oneway/export/a/a;->a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    goto :goto_2e

    :cond_69
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    sget-object v1, Lmobi/oneway/export/a/a$1;->a:[I

    iget-object v3, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v3}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_ae

    goto :goto_6d

    :pswitch_87
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-virtual {v0, p1, v3, v1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V

    goto :goto_6d

    :pswitch_90
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-virtual {v0, p1, v3, v1}, Lmobi/oneway/export/f/c;->b(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V

    goto :goto_6d

    :pswitch_99
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-virtual {v0, p1, v3, v1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V

    goto :goto_6d

    :pswitch_a2
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-virtual {v0, p1, v3, v1}, Lmobi/oneway/export/f/c;->c(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V

    goto :goto_6d

    :cond_ab
    move v0, v1

    goto :goto_48

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_87
        :pswitch_90
        :pswitch_99
        :pswitch_a2
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    iget-object v0, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v2, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lmobi/oneway/export/f/c;->b(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v1, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    iget-object v2, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, p2}, Lmobi/oneway/export/f/c;->a(Lmobi/oneway/export/enums/AdType;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    iput-object p1, p0, Lmobi/oneway/export/a/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    sget-object v1, Lmobi/oneway/export/a/a$1;->a:[I

    iget-object v3, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v3}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_4e

    goto :goto_f

    :pswitch_29
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-virtual {v0, v3, v1}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V

    goto :goto_f

    :pswitch_32
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-virtual {v0, v3, v1}, Lmobi/oneway/export/f/c;->b(Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V

    goto :goto_f

    :pswitch_3b
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-virtual {v0, v3, v1}, Lmobi/oneway/export/f/c;->c(Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V

    goto :goto_f

    :pswitch_44
    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-virtual {v0, v3, v1}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V

    goto :goto_f

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_32
        :pswitch_44
        :pswitch_3b
    .end packed-switch
.end method

.method public b()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v3, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    iget-object v4, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmobi/oneway/export/f/c;->b(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_27
    move v0, v1

    goto :goto_a
.end method

.method public c()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/a/a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v2, p0, Lmobi/oneway/export/a/a;->c:Lmobi/oneway/export/enums/AdType;

    iget-object v3, p0, Lmobi/oneway/export/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lmobi/oneway/export/f/c;->c(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    goto :goto_10
.end method
