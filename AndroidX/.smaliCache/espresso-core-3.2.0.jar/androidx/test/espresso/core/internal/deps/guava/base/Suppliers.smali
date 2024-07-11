.class public final Landroidx/test/espresso/core/internal/deps/guava/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/Suppliers$SupplierOfInstance;
    }
.end annotation


# direct methods
.method public static ofInstance(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 268
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
