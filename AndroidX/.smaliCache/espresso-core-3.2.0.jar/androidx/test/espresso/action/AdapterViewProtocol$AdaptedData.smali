.class public Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;
.super Ljava/lang/Object;
.source "AdapterViewProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/AdapterViewProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

.field public final opaqueToken:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "opaqueToken",
            "dataFunction"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->data:Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    .line 179
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;Landroidx/test/espresso/action/AdapterViewProtocol$1;)V
    .registers 5

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .line 162
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    invoke-interface {v0}, Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 167
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 168
    if-nez v0, :cond_9

    const-string v1, "null"

    goto :goto_11

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_11
    instance-of v2, v0, Landroid/database/Cursor;

    if-eqz v2, :cond_1b

    .line 170
    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_1b
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Data: %s (class: %s) token: %s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
