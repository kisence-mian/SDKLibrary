.class Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder$1;
.super Ljava/lang/Object;
.source "AdapterViewProtocol.java"

# interfaces
.implements Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->build()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;


# direct methods
.method constructor <init>(Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder$1;->this$0:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .line 210
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder$1;->this$0:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    # getter for: Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->data:Ljava/lang/Object;
    invoke-static {v0}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->access$000(Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
