.class public final Landroidx/test/espresso/action/EspressoKey;
.super Ljava/lang/Object;
.source "EspressoKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/EspressoKey$Builder;
    }
.end annotation


# instance fields
.field private final keyCode:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field private final metaState:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method constructor <init>(II)V
    .registers 3
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "metaState"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroidx/test/espresso/action/EspressoKey;->keyCode:I

    .line 42
    iput p2, p0, Landroidx/test/espresso/action/EspressoKey;->metaState:I

    .line 43
    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/action/EspressoKey$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 36
    # getter for: Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I
    invoke-static {p1}, Landroidx/test/espresso/action/EspressoKey$Builder;->access$000(Landroidx/test/espresso/action/EspressoKey$Builder;)I

    move-result v0

    # invokes: Landroidx/test/espresso/action/EspressoKey$Builder;->getMetaState()I
    invoke-static {p1}, Landroidx/test/espresso/action/EspressoKey$Builder;->access$100(Landroidx/test/espresso/action/EspressoKey$Builder;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/test/espresso/action/EspressoKey;-><init>(II)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/action/EspressoKey$Builder;Landroidx/test/espresso/action/EspressoKey$1;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Landroidx/test/espresso/action/EspressoKey;-><init>(Landroidx/test/espresso/action/EspressoKey$Builder;)V

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .registers 2

    .line 46
    iget v0, p0, Landroidx/test/espresso/action/EspressoKey;->keyCode:I

    return v0
.end method

.method public getMetaState()I
    .registers 2

    .line 50
    iget v0, p0, Landroidx/test/espresso/action/EspressoKey;->metaState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 55
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/action/EspressoKey;->keyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroidx/test/espresso/action/EspressoKey;->metaState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "keyCode: %s, metaState: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
