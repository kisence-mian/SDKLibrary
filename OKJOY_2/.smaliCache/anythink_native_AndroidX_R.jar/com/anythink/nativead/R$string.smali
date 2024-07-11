.class public Lcom/anythink/nativead/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static anythink_plugin_splash_skip_text:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const v0, 0x7f140001

    sput v0, Lcom/anythink/nativead/R$string;->anythink_plugin_splash_skip_text:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
