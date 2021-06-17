.class Landroidx/test/espresso/base/IdlingResourceRegistry$2;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

.field final synthetic val$loopers:Ljava/lang/Iterable;

.field final synthetic val$resources:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$resources",
            "val$loopers"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    iput-object p2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->val$resources:Ljava/lang/Iterable;

    iput-object p3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->val$loopers:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4

    .line 96
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->val$resources:Ljava/lang/Iterable;

    iget-object v2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;->val$loopers:Ljava/lang/Iterable;

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method
