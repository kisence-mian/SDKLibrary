.class Lcom/google/gson/Gson$1;
.super Lcom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/Gson;->doubleAdapter(Z)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/gson/Gson;

    .line 312
    iput-object p1, p0, Lcom/google/gson/Gson$1;->this$0:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;
    .registers 4
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 315
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 316
    const/4 v0, 0x0

    return-object v0

    .line 318
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson$1;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .registers 5
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    if-nez p2, :cond_6

    .line 322
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 323
    return-void

    .line 325
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 326
    .local v0, "doubleValue":D
    invoke-static {v0, v1}, Lcom/google/gson/Gson;->checkValidFloatingPoint(D)V

    .line 327
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 328
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson$1;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
