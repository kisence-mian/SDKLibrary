.class public final Lokjoy/q/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, ""

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
