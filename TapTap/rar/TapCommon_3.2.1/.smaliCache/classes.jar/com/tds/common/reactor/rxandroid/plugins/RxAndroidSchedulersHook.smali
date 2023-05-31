.class public Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;
.super Ljava/lang/Object;
.source "RxAndroidSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    invoke-direct {v0}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;->DEFAULT_INSTANCE:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;
    .registers 1

    .line 10
    sget-object v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;->DEFAULT_INSTANCE:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    return-object v0
.end method


# virtual methods
.method public getMainThreadScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSchedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;
    .registers 2
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 31
    return-object p1
.end method
