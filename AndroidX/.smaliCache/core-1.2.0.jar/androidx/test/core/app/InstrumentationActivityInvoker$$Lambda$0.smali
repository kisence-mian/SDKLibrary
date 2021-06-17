.class final synthetic Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$0;->arg$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$0;->arg$1:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->lambda$recreateActivity$0$InstrumentationActivityInvoker(Landroid/app/Activity;)V

    return-void
.end method
