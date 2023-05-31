.class public Lpl/droidsonroids/gif/GifDrawableBuilder;
.super Lpl/droidsonroids/gif/GifDrawableInit;
.source "GifDrawableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/droidsonroids/gif/GifDrawableInit",
        "<",
        "Lpl/droidsonroids/gif/GifDrawableBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifDrawableInit;-><init>()V

    return-void
.end method


# virtual methods
.method protected self()Lpl/droidsonroids/gif/GifDrawableBuilder;
    .registers 1

    .prologue
    .line 11
    return-object p0
.end method

.method protected bridge synthetic self()Lpl/droidsonroids/gif/GifDrawableInit;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawableBuilder;->self()Lpl/droidsonroids/gif/GifDrawableBuilder;

    move-result-object v0

    return-object v0
.end method
