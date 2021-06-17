.class public interface abstract Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;
.super Ljava/lang/Object;
.source "RemovalListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onRemoval(Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method
