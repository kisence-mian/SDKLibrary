.class public final Lcom/tds/common/reactor/functions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/functions/Actions$EmptyAction;
    }
.end annotation


# static fields
.field private static final EMPTY_ACTION:Lcom/tds/common/reactor/functions/Actions$EmptyAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    new-instance v0, Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    invoke-direct {v0}, Lcom/tds/common/reactor/functions/Actions$EmptyAction;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/functions/Actions;->EMPTY_ACTION:Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/functions/Actions$EmptyAction<",
            "TT0;TT1;TT2;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/tds/common/reactor/functions/Actions;->EMPTY_ACTION:Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    return-object v0
.end method
