.class public final Lcom/anythink/core/common/res/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/anythink/core/common/res/e;->c:I

    .line 17
    iput-object p2, p0, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    .line 18
    return-void
.end method
