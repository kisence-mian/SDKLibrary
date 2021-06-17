.class final synthetic Landroidx/test/internal/util/LogUtil$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/test/internal/util/LogUtil$Supplier;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/internal/util/LogUtil$$Lambda$1;->arg$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/test/internal/util/LogUtil$$Lambda$1;->arg$1:Ljava/lang/String;

    invoke-static {v0}, Landroidx/test/internal/util/LogUtil;->lambda$logDebugWithProcess$1$LogUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
