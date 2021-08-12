.class final Lcom/sigmob/wire/Preconditions;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
