.class Landroidx/navigation/NavDeepLink$ParamQuery;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParamQuery"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParamRegex:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    .line 209
    return-void
.end method


# virtual methods
.method addArgumentName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method getArgumentName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 224
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getParamRegex()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mParamRegex:Ljava/lang/String;

    return-object v0
.end method

.method setParamRegex(Ljava/lang/String;)V
    .registers 2
    .param p1, "paramRegex"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mParamRegex:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public size()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
