.class final Lcom/mintegral/msdk/base/utils/c$3;
.super Ljava/lang/Object;
.source "CommonDeviceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 778
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/c$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 782
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 815
    :cond_c
    :goto_c
    return-void

    .line 785
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/c$3;->a:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 788
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/c$3;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 789
    if-eqz v0, :cond_c

    .line 792
    sget-boolean v1, Lcom/mintegral/msdk/base/common/a;->r:Z

    if-eqz v1, :cond_c

    .line 794
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 795
    if-nez v0, :cond_3a

    .line 796
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->a(I)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    goto :goto_c

    .line 811
    :catch_2c
    move-exception v0

    .line 812
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 813
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/c;->a(I)I

    goto :goto_c

    .line 799
    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    .line 800
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->a(I)I

    goto :goto_c

    .line 803
    :cond_47
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/c$3;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 804
    if-nez v0, :cond_58

    .line 805
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->a(I)I

    goto :goto_c

    .line 808
    :cond_58
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->a(I)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5f} :catch_2c

    goto :goto_c
.end method
