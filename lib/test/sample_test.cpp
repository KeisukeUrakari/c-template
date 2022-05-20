#include <gtest/gtest.h>

extern "C" {
#include "../src/sample.h"
}

class SampleTest : public ::testing::Test {
  protected:
    virtual void SetUp() {
    }
    virtual void TearDown() {
    }
};

TEST_F(SampleTest, add) {
    ASSERT_EQ(0, add(0, 0));
    ASSERT_EQ(1, add(-1, 2));
}
