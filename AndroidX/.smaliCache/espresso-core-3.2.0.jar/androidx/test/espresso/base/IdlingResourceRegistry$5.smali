.class Landroidx/test/espresso/base/IdlingResourceRegistry$5;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;->getResources()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/test/espresso/IdlingResource;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$5;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

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

    .line 248
    invoke-virtual {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$5;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$5;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->getResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
