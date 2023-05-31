.class public final Lrx/internal/schedulers/ImmediateScheduler;
.super Lrx/Scheduler;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/ImmediateScheduler$1;,
        Lrx/internal/schedulers/ImmediateScheduler$InnerImmediateScheduler;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lrx/internal/schedulers/ImmediateScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lrx/internal/schedulers/ImmediateScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/ImmediateScheduler;-><init>()V

    sput-object v0, Lrx/internal/schedulers/ImmediateScheduler;->INSTANCE:Lrx/internal/schedulers/ImmediateScheduler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lrx/internal/schedulers/ImmediateScheduler$InnerImmediateScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/internal/schedulers/ImmediateScheduler$InnerImmediateScheduler;-><init>(Lrx/internal/schedulers/ImmediateScheduler;Lrx/internal/schedulers/ImmediateScheduler$1;)V

    return-object v0
.end method
