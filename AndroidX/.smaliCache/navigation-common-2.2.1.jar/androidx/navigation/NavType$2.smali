.class final Landroidx/navigation/NavType$2;
.super Landroidx/navigation/NavType;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavType<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .param p1, "nullableAllowed"    # Z

    .line 304
    invoke-direct {p0, p1}, Landroidx/navigation/NavType;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 314
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 304
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavType$2;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 327
    const-string v0, "reference"

    return-object v0
.end method

.method public parseValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "References don\'t support parsing string values."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 304
    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$2;->parseValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Integer;

    .line 308
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    return-void
.end method

.method public bridge synthetic put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 304
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType$2;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
