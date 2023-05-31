.class final Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnitResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Lokhttp3/ResponseBody;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;

    invoke-direct {v0}, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;-><init>()V

    sput-object v0, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .registers 3
    .param p1, "value"    # Lokhttp3/ResponseBody;

    .prologue
    .line 74
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 75
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
