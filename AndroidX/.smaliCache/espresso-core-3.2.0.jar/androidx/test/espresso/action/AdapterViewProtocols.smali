.class public final Landroidx/test/espresso/action/AdapterViewProtocols;
.super Ljava/lang/Object;
.source "AdapterViewProtocols.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;
    }
.end annotation


# static fields
.field private static final FULLY_RENDERED_PERCENTAGE_CUTOFF:I = 0x5a

.field private static final STANDARD_PROTOCOL:Landroidx/test/espresso/action/AdapterViewProtocol;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;

    invoke-direct {v0}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;-><init>()V

    sput-object v0, Landroidx/test/espresso/action/AdapterViewProtocols;->STANDARD_PROTOCOL:Landroidx/test/espresso/action/AdapterViewProtocol;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static standardProtocol()Landroidx/test/espresso/action/AdapterViewProtocol;
    .registers 1

    .line 54
    sget-object v0, Landroidx/test/espresso/action/AdapterViewProtocols;->STANDARD_PROTOCOL:Landroidx/test/espresso/action/AdapterViewProtocol;

    return-object v0
.end method
