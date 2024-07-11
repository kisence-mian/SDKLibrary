.class Lcom/bytedance/sdk/openadsdk/component/splash/a$a;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;
    }
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 902
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 904
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$1;)V
    .registers 2

    .line 893
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;-><init>()V

    return-void
.end method

.method private a(J)I
    .registers 9

    .line 953
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_8

    .line 954
    return v3

    .line 956
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    .line 957
    cmp-long p1, v4, v0

    if-gtz p1, :cond_12

    .line 958
    return v3

    .line 960
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CircleLoadSplashAd getIntervalTime temp "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashAdCacheManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-wide/32 p1, 0xea60

    div-long/2addr v4, p1

    long-to-int p1, v4

    .line 962
    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 893
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 1053
    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_7

    goto :goto_4d

    .line 1056
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashAdCacheManager \u5df2\u7ecf\u52a0\u8f7d\u8fc7\u4e86 adSlot.getCodeId() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashAdCacheManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;

    .line 1058
    if-eqz p1, :cond_35

    .line 1059
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->a(Z)V

    .line 1061
    :cond_35
    const-string p1, "SplashAdCacheManager \u662f\u5426\u9700\u8981\u52a0\u8f7d\u5176\u4ed6rit\u5f00\u5c4f\u5e7f\u544a"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1063
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b(Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 1064
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->c(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1066
    :cond_4c
    return-void

    .line 1054
    :cond_4d
    :goto_4d
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 10

    .line 907
    if-eqz p1, :cond_73

    if-nez p2, :cond_5

    goto :goto_73

    .line 911
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 912
    return-void

    .line 915
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add adSlot.getCodeId() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashAdCacheManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 918
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->k()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 922
    return-void

    .line 924
    :cond_4d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->y()I

    move-result p1

    .line 925
    if-gtz p1, :cond_58

    .line 926
    return-void

    .line 928
    :cond_58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->j()V

    .line 929
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;)V

    const-wide/16 v2, 0x0

    const p2, 0xea60

    mul-int/2addr p1, p2

    add-int/lit16 p1, p1, 0x2710

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 936
    return-void

    .line 908
    :cond_73
    :goto_73
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    .line 893
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 3

    .line 893
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    .line 893
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 6

    .line 1011
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1012
    return-void

    .line 1014
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "SplashAdCacheManager"

    if-eqz p1, :cond_5d

    .line 1015
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-eqz p1, :cond_75

    .line 1016
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adSlot "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5faa\u73af\u8bf7\u6c42\u5e7f\u544a adSlot getCodeId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " SplashAdCacheManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    goto :goto_75

    .line 1021
    :cond_5d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b(Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1022
    const-string p1, "\u8fd8\u5b58\u5728\u6ca1\u6709\u52a0\u8f7d\u7684\u5f00\u5c4frit\u9700\u8981\u52a0\u8f7d\u5f00\u5c4f"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_75

    .line 1025
    :cond_70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->c(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1028
    :cond_75
    :goto_75
    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;",
            ">;)V"
        }
    .end annotation

    .line 978
    const-string v0, "SplashAdCacheManager"

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_67

    .line 982
    :cond_b
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 983
    if-nez v1, :cond_16

    .line 984
    return-void

    .line 986
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 987
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 988
    if-nez v2, :cond_25

    .line 989
    return-void

    .line 991
    :cond_25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;

    .line 992
    if-nez v3, :cond_2e

    .line 993
    return-void

    .line 996
    :cond_2e
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->a()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 997
    goto :goto_16

    .line 999
    :cond_35
    iget-object v1, v3, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 1000
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/m;

    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " loadSplashParamHashMapTest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string p1, "byRitLoadSplashAd \u5f00\u59cb\u8bf7\u6c42\u5e7f\u544a"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->a(Z)V

    .line 1004
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 1005
    return-void

    .line 1008
    :cond_66
    return-void

    .line 979
    :cond_67
    :goto_67
    const-string p1, "mloadSplashParaHashMap == null || mloadSplashParaHashMap.size() == 0 "

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method private a()Z
    .registers 4

    .line 939
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->x()I

    move-result v0

    .line 941
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    .line 942
    return v1

    .line 945
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->y()I

    move-result v0

    .line 946
    if-gtz v0, :cond_18

    .line 947
    return v1

    .line 949
    :cond_18
    return v2
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CircleLoadSplashAd isLoadSplashAd rit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashAdCacheManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CircleLoadSplashAd isLoadSplashAd lastLoadAdTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(J)I

    move-result p1

    .line 970
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->y()I

    move-result v0

    .line 971
    if-lt p1, v0, :cond_42

    .line 972
    const/4 p1, 0x1

    return p1

    .line 974
    :cond_42
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/util/concurrent/ConcurrentHashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;",
            ">;)Z"
        }
    .end annotation

    .line 1070
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1071
    return v0

    .line 1073
    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 1074
    return v0

    .line 1076
    :cond_b
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1077
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1078
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1079
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;

    .line 1080
    if-nez v1, :cond_28

    .line 1081
    goto :goto_13

    .line 1083
    :cond_28
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->a()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1084
    const/4 p1, 0x1

    return p1

    .line 1086
    :cond_30
    goto :goto_13

    .line 1087
    :cond_31
    return v0
.end method

.method private c(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;",
            ">;)V"
        }
    .end annotation

    .line 1092
    if-nez p1, :cond_3

    .line 1093
    return-void

    .line 1095
    :cond_3
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1096
    return-void

    .line 1098
    :cond_a
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u91cd\u7f6e\u5f00\u5c4frit\u8bf7\u6c42\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1100
    if-nez p1, :cond_1c

    .line 1101
    return-void

    .line 1103
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;

    .line 1106
    if-nez v0, :cond_31

    .line 1107
    goto :goto_1c

    .line 1109
    :cond_31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->a(Z)V

    .line 1110
    goto :goto_1c

    .line 1111
    :cond_36
    return-void
.end method
