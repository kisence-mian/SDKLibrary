.class public interface abstract Landroidx/test/espresso/action/AdapterViewProtocol;
.super Ljava/lang/Object;
.source "AdapterViewProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;,
        Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;
    }
.end annotation


# virtual methods
.method public abstract getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataRenderedByView(Landroid/widget/AdapterView;Landroid/view/View;)Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "descendantView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "adaptedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ")V"
        }
    .end annotation
.end method
